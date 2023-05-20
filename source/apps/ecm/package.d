module apps.ecm;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.ecm.controllers;
  import apps.ecm.helpers;
  import apps.ecm.routers;
  import apps.ecm.tests;
  import apps.ecm.views;
}

static this() {
  AppRegistry.register(  
    App
    .name("ecmApp")
    .rootPath("/apps/ecm")
    .addRoute(Route("", HTTPMethod.GET, ECMIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, ECMIndexPageController)));
}