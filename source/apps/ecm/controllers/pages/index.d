module apps.ecm.controllers.pages.index;

import apps.ecm;
@safe:

class DECMIndexPageController : DAPPPageController {
  mixin(ControllerThis!("ECMIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(ECMIndexView(this));
  }
}
mixin(ControllerCalls!("ECMIndexPageController", "DECMIndexPageController"));
