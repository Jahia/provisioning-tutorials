org.jahia.services.content.JCRTemplate.getInstance().doExecuteWithSystemSession({ session ->
    org.jahia.osgi.BundleUtils.getOsgiService("org.jahia.modules.apitokens.TokenService")
        .tokenBuilder("/users/root", "test-token12345", session)
        .setToken("kgHNm05iQV61I+GY3X5HVr13i866HAAsyou8G+eGubk=")
        .setActive(true)
        .setScopes(java.util.List.of("graphql"))
        .setExpirationDate(new org.joda.time.DateTime('2027-12-31').toCalendar(Locale.getDefault()))
        .create()
    session.save();
})
