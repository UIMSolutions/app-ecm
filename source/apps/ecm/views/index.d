module apps.ecm.views.index;

import apps.ecm;
@safe:

class DECMIndexView : DView {
  mixin(ViewThis!("ECMIndexView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    /* this
      .pageHeader
        .title("ECM -> Index"); */
  }
}
mixin(ViewCalls!("ECMIndexView", "DECMIndexView"));
