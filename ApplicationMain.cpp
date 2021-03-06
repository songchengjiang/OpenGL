#include "ApplicationFactory.h"

int main(int argc, char *argv[]){

	std::string apps[] = {
		"TriangleApp",
		"TransformFeedbackApp",
		"ModelImporterApp",
		"AdvanceLightApp",
		"MaterialSystemApp",
		"PostProcessingApp",
		"BaseShapeDrawApp",
	};
	Application *app = ApplicationFactory::Instance()->CreateApplication(apps[2]);

	app->Init(argc, argv);
	app->Run();
	return 0;
}