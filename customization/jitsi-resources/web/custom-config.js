config.tokenAuthUrl = 'static/authError.html';
config.disableDeepLinking = true;
config.enableWelcomePage = false;
config.enableClosePage = true;
config.enableLobbyChat = false;
config.defaultLanguage = 'de';
config.enableEncodedTransformSupport = true;
config.toolbarButtons = [
    'camera',
    //'chat', -> Disabled no e2ee support
    //'etherpad', -> Disabled no e2ee support
    'filmstrip',
    'fullscreen',
    'hangup',
    'microphone',
    'noisesuppression',
    'participants-pane',
    'raisehand',
    'select-background',
    'settings',
    'shortcuts',
    'tileview',
    'toggle-camera',
    'videoquality',
    //'whiteboard', -> Disabled no e2ee support

];
config.defaultLocalDisplayName = 'Ich';
config.defaultRemoteDisplayName = 'Ratsuchender';
config.disableModeratorIndicator = true;
config.remoteVideoMenu = {
    disableGrantModerator: true,
}
config.connectionIndicators = {
    disabled: true,
    disableDetails: true,
}
config.toolbarConfig = {
    initialTimeout: 5000,
    alwaysVisible: false,
    timeout: 4000,
};
config.disabledSounds = [
    'E2EE_OFF_SOUND',
    'E2EE_ON_SOUND'
];
config.hideConferenceSubject = true;
config.dynamicBrandingUrl = '/dynamicBranding.json';
config.channelLastN = -1;
config.lastNLimits = {
    5: 20,
    30: 15,
    50: 10,
    70: 5,
    90: 2
};
config.enableIceRestart = true;
config.giphy = {
    enabled: false,
};
config.whiteboard = {
    enabled: false,
};
config.gravatar = {
    disabled: true,
};
config.breakoutRooms = {
    hideAddRoomButton: true,
    hideAutoAssignButton: true,
    hideJoinRoomButton: true,
    hideModeratorSettingsTab: true,
    hideMoreActionsButton: true,
    hideMuteAllButton: true,
};
config.disableThirdPartyRequests = true;