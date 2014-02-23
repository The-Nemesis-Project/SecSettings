.class Lcom/android/settings/SettingsTabActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final isDeviceDefault:Z

.field private final isTablet:Z

.field private final mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

.field private final mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private final mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

.field private final mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

.field private final mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

.field private final mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

.field private final mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

.field private final mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private final mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private final mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private final mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

.field private final mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mTetheredData:I

.field private final mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

.field private final mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

.field private final mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V
    .locals 11
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 1318
    invoke-direct {p0, p1, v10, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1214
    iput v10, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTetheredData:I

    .line 1319
    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 1320
    iput-object p3, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 1321
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1325
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 1339
    iput-object v3, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 1342
    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    .line 1344
    new-instance v0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    .line 1345
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 1346
    new-instance v0, Lcom/android/settings/dormantmode/DormantModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    .line 1347
    new-instance v0, Lcom/android/settings/DrivingModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/DrivingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    .line 1348
    new-instance v0, Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    .line 1349
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 1350
    new-instance v0, Lcom/android/settings/motion/MotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion/MotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    .line 1351
    new-instance v0, Lcom/android/settings/FingerAirViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/FingerAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    .line 1352
    new-instance v0, Lcom/android/settings/AirViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    .line 1353
    new-instance v0, Lcom/android/settings/torchlight/TorchlightEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/torchlight/TorchlightEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    .line 1355
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {v0, p1}, Lcom/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 1357
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1358
    new-instance v0, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 1364
    :goto_0
    new-instance v0, Lcom/android/settings/nfc/SBeamEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v3}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 1369
    new-instance v0, Lcom/android/settings/VoiceInputControlEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    .line 1371
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_1
    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v9, :cond_0

    move-object v0, p1

    .line 1372
    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0, v1, v2}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    .line 1375
    :cond_0
    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1376
    .local v8, a:Landroid/content/res/TypedArray;
    const/16 v0, 0x111

    const v1, 0x10900c9

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 1377
    const/16 v0, 0x135

    invoke-virtual {v8, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    .line 1379
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_3

    move v0, v9

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isTablet:Z

    .line 1380
    return-void

    .line 1360
    .end local v8           #a:Landroid/content/res/TypedArray;
    :cond_1
    iput-object v3, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 1371
    goto :goto_1

    .restart local v8       #a:Landroid/content/res/TypedArray;
    :cond_3
    move v0, v10

    .line 1379
    goto :goto_2
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 7
    .parameter "header"

    .prologue
    const-wide/32 v5, 0x7f0b057d

    const/4 v4, 0x0

    .line 1254
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 1255
    const/4 v0, 0x0

    .line 1279
    :goto_0
    return v0

    .line 1256
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0579

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b057b

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0594

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b059a

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b059b

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0598

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b059f

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05a0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05ab

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05ac

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05a8

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05da

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b057a

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0588

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b058a

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b05ad

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b058b

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1275
    :cond_3
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 1276
    :cond_4
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0572

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 1277
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1279
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private setDirectSettingValue(Landroid/widget/Switch;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1797
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$600()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1798
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0579

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1799
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/wifi/WifiEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 1825
    :goto_1
    invoke-static {v1}, Lcom/android/settings/SettingsTabActivity;->access$502(Z)Z

    .line 1826
    return-void

    :cond_0
    move v0, v1

    .line 1797
    goto :goto_0

    .line 1800
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b057b

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1801
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1802
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0588

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1803
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/nfc/NfcEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1804
    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b058a

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1805
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/nfc/SBeamEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1806
    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b059a

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 1807
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1808
    :cond_5
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b059b

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 1809
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/DrivingModeEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1810
    :cond_6
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0594

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 1811
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1812
    :cond_7
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b05a0

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 1813
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 1814
    :cond_8
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b05ac

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    .line 1815
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/AirViewEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto/16 :goto_1

    .line 1816
    :cond_9
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b05ad

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 1817
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v2, v0}, Lcom/android/settings/VoiceInputControlEnabler;->updateSwitch(Z)V

    goto/16 :goto_1

    .line 1818
    :cond_a
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b059f

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 1819
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/torchlight/TorchlightEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto/16 :goto_1

    .line 1820
    :cond_b
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b05ab

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    .line 1821
    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/FingerAirViewEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto/16 :goto_1

    .line 1823
    :cond_c
    const-string v0, "SettingsTapActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDirectSettingValue() mSearchHeaderID none : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1292
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 1286
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1287
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1385
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceActivity$Header;

    .line 1386
    .local v6, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v6}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v7

    .line 1387
    .local v7, headerType:I
    const/16 v16, 0x0

    .line 1389
    .local v16, view:Landroid/view/View;
    if-nez p2, :cond_8

    .line 1390
    new-instance v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/SettingsTabActivity$1;)V

    .line 1391
    .local v8, holder:Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    packed-switch v7, :pswitch_data_0

    .line 1487
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1494
    :goto_1
    packed-switch v7, :pswitch_data_1

    .line 1705
    :cond_0
    :goto_2
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b057a

    cmp-long v17, v17, v19

    if-nez v17, :cond_1

    .line 1716
    :cond_1
    return-object v16

    .line 1393
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isTablet:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v17, v0

    const v18, 0x1090135

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090132

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    :goto_3
    move-object/from16 v17, v16

    .line 1401
    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 1397
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090133

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_3

    .line 1399
    :cond_3
    new-instance v16, Landroid/widget/TextView;

    .end local v16           #view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const v19, 0x1010208

    invoke-direct/range {v16 .. v19}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v16       #view:Landroid/view/View;
    goto :goto_3

    .line 1405
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040183

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1407
    const v17, 0x7f0b008a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1408
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1409
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1410
    const v17, 0x7f0b004e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1411
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v17, v0

    const v18, 0x1090135

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090137

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1417
    :goto_4
    const v17, 0x1020006

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1418
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1419
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1420
    const v17, 0x102043d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1415
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090138

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_4

    .line 1422
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040123

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1423
    const v17, 0x7f0b008a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1424
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1426
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1428
    const v17, 0x7f0b004e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1433
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1437
    :goto_5
    const v17, 0x1020006

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1438
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1440
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1436
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x10900c9

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_5

    .line 1444
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f04015f

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1445
    const v17, 0x7f0b03c5

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 1446
    .local v12, searchLayout:Landroid/widget/LinearLayout;
    const/high16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 1447
    const v17, 0x7f0b03c6

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 1448
    .local v13, searchViewLayout:Landroid/widget/LinearLayout;
    new-instance v17, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$1;-><init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1457
    new-instance v17, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$2;-><init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1463
    new-instance v11, Landroid/widget/SearchView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 1464
    .local v11, mSearchView:Landroid/widget/SearchView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f090569

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1465
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1466
    invoke-virtual {v11}, Landroid/widget/SearchView;->clearFocus()V

    .line 1467
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 1468
    iget-object v0, v11, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SearchView$SearchAutoComplete;->setFocusable(Z)V

    .line 1469
    iget-object v0, v11, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SearchView$SearchAutoComplete;->setFocusableInTouchMode(Z)V

    .line 1470
    iget-object v0, v11, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$3;-><init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;Landroid/widget/LinearLayout;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1476
    iget-object v0, v11, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$4;-><init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;Landroid/widget/LinearLayout;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SearchView$SearchAutoComplete;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1483
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1489
    .end local v8           #holder:Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    .end local v11           #mSearchView:Landroid/widget/SearchView;
    .end local v12           #searchLayout:Landroid/widget/LinearLayout;
    .end local v13           #searchViewLayout:Landroid/widget/LinearLayout;
    :cond_8
    move-object/from16 v16, p2

    .line 1490
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;

    .restart local v8       #holder:Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1496
    :pswitch_4
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1502
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040183

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1504
    const v17, 0x7f0b008a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1505
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1506
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1507
    const v17, 0x7f0b004e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1508
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1510
    const v17, 0x7f0b03e1

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1511
    .local v15, textLayout:Landroid/view/View;
    if-eqz v15, :cond_9

    instance-of v0, v15, Landroid/widget/LinearLayout;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 1512
    const v17, 0x7f0b008a

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1513
    new-instance v17, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$5;-><init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1557
    .end local v15           #textLayout:Landroid/view/View;
    :cond_9
    :goto_6
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0579

    cmp-long v17, v17, v19

    if-nez v17, :cond_13

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1608
    :cond_a
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1609
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$400()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1610
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$500()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1611
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setDirectSettingValue(Landroid/widget/Switch;)V

    .line 1616
    :cond_b
    const v17, 0x102032b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1617
    .local v5, dynamicDivider:Landroid/view/View;
    if-eqz v5, :cond_c

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1618
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1622
    :cond_c
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1626
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v17, v0

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Switch;->setClickable(Z)V

    .line 1633
    .end local v5           #dynamicDivider:Landroid/view/View;
    :cond_d
    :pswitch_6
    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_24

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_24

    .line 1635
    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1637
    .local v4, accType:Ljava/lang/String;
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 1638
    .local v10, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0030

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1640
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1641
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1643
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1647
    .end local v4           #accType:Ljava/lang/String;
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_8
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1649
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b059d

    cmp-long v17, v17, v19

    if-nez v17, :cond_e

    .line 1650
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    const/16 v17, 0x1

    if-eqz v17, :cond_e

    .line 1657
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1658
    .local v14, summary:Ljava/lang/CharSequence;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_26

    .line 1659
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1682
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1684
    const-string v17, "VZW"

    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_25

    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0579

    cmp-long v17, v17, v19

    if-eqz v17, :cond_f

    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b057b

    cmp-long v17, v17, v19

    if-nez v17, :cond_25

    .line 1686
    :cond_f
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1536
    .end local v14           #summary:Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 1537
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v17, v0

    const v18, 0x1090135

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090137

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1542
    :goto_9
    const v17, 0x1020006

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1543
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1544
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1545
    const v17, 0x102043d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1546
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1540
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090138

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_9

    .line 1548
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040123

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 1549
    const v17, 0x7f0b008a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1550
    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1551
    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1552
    const v17, 0x7f0b004e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1553
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1559
    :cond_13
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b057a

    cmp-long v17, v17, v19

    if-nez v17, :cond_14

    .line 1566
    :cond_14
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b057d

    cmp-long v17, v17, v19

    if-nez v17, :cond_15

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1569
    :cond_15
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0594

    cmp-long v17, v17, v19

    if-nez v17, :cond_16

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1571
    :cond_16
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b059a

    cmp-long v17, v17, v19

    if-nez v17, :cond_17

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/dormantmode/DormantModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1573
    :cond_17
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b059b

    cmp-long v17, v17, v19

    if-nez v17, :cond_18

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/DrivingModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1575
    :cond_18
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0598

    cmp-long v17, v17, v19

    if-nez v17, :cond_19

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1577
    :cond_19
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b059f

    cmp-long v17, v17, v19

    if-nez v17, :cond_1a

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/torchlight/TorchlightEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1579
    :cond_1a
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05a0

    cmp-long v17, v17, v19

    if-nez v17, :cond_1b

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1581
    :cond_1b
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05a8

    cmp-long v17, v17, v19

    if-nez v17, :cond_1c

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1583
    :cond_1c
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05ab

    cmp-long v17, v17, v19

    if-nez v17, :cond_1d

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/FingerAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1585
    :cond_1d
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05ac

    cmp-long v17, v17, v19

    if-nez v17, :cond_1e

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/AirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1587
    :cond_1e
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0588

    cmp-long v17, v17, v19

    if-nez v17, :cond_1f

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/nfc/NfcEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1589
    :cond_1f
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b058a

    cmp-long v17, v17, v19

    if-nez v17, :cond_20

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/nfc/SBeamEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1591
    :cond_20
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b057b

    cmp-long v17, v17, v19

    if-nez v17, :cond_22

    .line 1594
    const-string v17, "VZW"

    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$300()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;Landroid/preference/PreferenceActivity$Header;Landroid/widget/TextView;)V

    goto/16 :goto_7

    .line 1598
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1601
    :cond_22
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b05ad

    cmp-long v17, v17, v19

    if-nez v17, :cond_23

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/VoiceInputControlEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1603
    :cond_23
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b058b

    cmp-long v17, v17, v19

    if-nez v17, :cond_a

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/nearby/NearbyEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1645
    :cond_24
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    iget v0, v6, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 1691
    .restart local v14       #summary:Ljava/lang/CharSequence;
    :cond_25
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b057b

    cmp-long v17, v17, v19

    if-nez v17, :cond_0

    .line 1692
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1698
    :cond_26
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1494
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1304
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    const/4 v0, 0x4

    .line 1307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1313
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 1297
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getCount()I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItemViewType(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1753
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    .line 1761
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 1762
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 1763
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->pause()V

    .line 1764
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->pause()V

    .line 1765
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->pause()V

    .line 1766
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->pause()V

    .line 1767
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->pause()V

    .line 1768
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 1769
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 1770
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->pause()V

    .line 1771
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->pause()V

    .line 1772
    :cond_4
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 1728
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    .line 1736
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 1737
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->resume()V

    .line 1738
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->resume()V

    .line 1739
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 1740
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->resume()V

    .line 1741
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->resume()V

    .line 1742
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->resume()V

    .line 1743
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    invoke-virtual {v0}, Lcom/android/settings/torchlight/TorchlightEnabler;->resume()V

    .line 1744
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    invoke-virtual {v0}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->resume()V

    .line 1745
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 1746
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 1747
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->resume()V

    .line 1748
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->resume()V

    .line 1749
    :cond_5
    return-void
.end method

.method public setEnablersForGuide(Lcom/android/settings/SettingsTabActivity;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1, v0, v1}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    .line 1793
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 1775
    if-eqz p1, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    .line 1781
    :goto_0
    return-void

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1779
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setSwitchOnOff(I)V
    .locals 1
    .parameter "headerId"

    .prologue
    .line 1830
    sparse-switch p1, :sswitch_data_0

    .line 1856
    :goto_0
    :sswitch_0
    return-void

    .line 1835
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitchOnOff()V

    goto :goto_0

    .line 1844
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->setSwitchOnOff()V

    goto :goto_0

    .line 1847
    :sswitch_3
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->setSwitchOnOff()V

    goto :goto_0

    .line 1850
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->setSwitchOnOff()V

    goto :goto_0

    .line 1853
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setSwitchOnOff()V

    goto :goto_0

    .line 1830
    :sswitch_data_0
    .sparse-switch
        0x7f0b0579 -> :sswitch_0
        0x7f0b057b -> :sswitch_1
        0x7f0b0588 -> :sswitch_0
        0x7f0b058a -> :sswitch_0
        0x7f0b0594 -> :sswitch_2
        0x7f0b059a -> :sswitch_3
        0x7f0b059b -> :sswitch_4
        0x7f0b05a0 -> :sswitch_5
    .end sparse-switch
.end method
