.class public final Lcom/android/settings/guide/GuideFragment;
.super Landroid/app/Fragment;
.source "GuideFragment.java"

# interfaces
.implements Lcom/android/settings/guide/GuideFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/GuideFragment$1;,
        Lcom/android/settings/guide/GuideFragment$WrappedEnabler;,
        Lcom/android/settings/guide/GuideFragment$GuideModes;,
        Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    }
.end annotation


# static fields
.field private static sIsInGuideMode:Z


# instance fields
.field private mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

.field private mIsInGuideMode:Z

.field private mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

.field private mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 414
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 49
    sget-object v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 416
    return-void
.end method

.method private static completeGuide(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 322
    return-void
.end method

.method public static deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 13
    .parameter "activity"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const v10, 0x7f0b0008

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 258
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v7, "GuideFragment"

    invoke-virtual {v1, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/guide/GuideFragment;

    .line 260
    .local v2, frag:Lcom/android/settings/guide/GuideFragment;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, guideMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/guide/GuideModeHelper;->isGuideModeBluetooth(Ljava/lang/String;)Z

    move-result v4

    .line 262
    .local v4, isBtGuide:Z
    const-string v7, "TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deployGuide: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {v3}, Lcom/android/settings/guide/GuideModeHelper;->isGuideModeWiFi(Ljava/lang/String;)Z

    move-result v5

    .line 268
    .local v5, isWifiGuide:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    if-eqz v2, :cond_2

    .line 270
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 272
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 274
    .local v6, layout:Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    .line 275
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 278
    :cond_0
    sput-boolean v11, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    .line 281
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 282
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    .line 313
    .end local v6           #layout:Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 286
    :cond_2
    if-eqz v2, :cond_3

    if-nez v4, :cond_3

    if-eqz v5, :cond_6

    .line 287
    :cond_3
    invoke-static {p1}, Lcom/android/settings/guide/GuideFragment;->newInstance(Landroid/content/Intent;)Lcom/android/settings/guide/GuideFragment;

    move-result-object v2

    .line 289
    if-eqz v2, :cond_5

    .line 291
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 293
    .restart local v6       #layout:Landroid/view/ViewGroup;
    if-eqz v6, :cond_4

    .line 294
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, container:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setId(I)V

    .line 297
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 300
    .end local v0           #container:Landroid/widget/FrameLayout;
    :cond_4
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const-string v8, "GuideFragment"

    invoke-virtual {v7, v10, v2, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 303
    sput-boolean v12, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_0

    .line 305
    .end local v6           #layout:Landroid/view/ViewGroup;
    :cond_5
    sput-boolean v11, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_0

    .line 309
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 310
    sput-boolean v12, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_0
.end method

.method public static findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;
    .locals 2
    .parameter "activity"

    .prologue
    .line 699
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 3
    .parameter "activity"

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 351
    .local v1, retval:Landroid/view/ViewGroup;
    instance-of v2, p0, Landroid/app/ListActivity;

    if-eqz v2, :cond_0

    .line 353
    check-cast p0, Landroid/app/ListActivity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 355
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 356
    check-cast v1, Landroid/view/ViewGroup;

    .line 360
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    return-object v1
.end method

.method private getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V
    .locals 6
    .parameter "savedInstanceState"
    .parameter "mode"

    .prologue
    .line 464
    move-object v3, p2

    .line 466
    .local v3, newMode:Lcom/android/settings/guide/GuideFragment$GuideModes;
    if-nez v3, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, guideMode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/settings/guide/GuideModeHelper;->isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    .line 473
    .local v2, isInSettingsGuide:Z
    invoke-static {v1}, Lcom/android/settings/guide/GuideModeHelper;->isGuideModeWiFi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 474
    if-eqz v2, :cond_2

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 480
    .end local v1           #guideMode:Ljava/lang/String;
    .end local v2           #isInSettingsGuide:Z
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 482
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_5

    .line 537
    :cond_1
    :goto_1
    return-void

    .line 474
    .end local v0           #activity:Landroid/app/Activity;
    .restart local v1       #guideMode:Ljava/lang/String;
    .restart local v2       #isInSettingsGuide:Z
    :cond_2
    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_0

    .line 475
    :cond_3
    invoke-static {v1}, Lcom/android/settings/guide/GuideModeHelper;->isGuideModeBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 476
    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    :goto_2
    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_2

    .line 486
    .end local v1           #guideMode:Ljava/lang/String;
    .end local v2           #isInSettingsGuide:Z
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 487
    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    goto :goto_1

    .line 491
    :cond_6
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eq v3, v4, :cond_1

    .line 496
    iput-object v3, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 499
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v4, :cond_7

    .line 500
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->onDestroy()V

    .line 501
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    .line 504
    :cond_7
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eqz v4, :cond_1

    .line 505
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    .line 507
    sget-object v4, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    iget-object v5, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v5}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 533
    :cond_8
    :goto_3
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v4, :cond_1

    .line 534
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->showHelpDialog()V

    goto :goto_1

    .line 513
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SubSettings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 514
    new-instance v4, Lcom/android/settings/guide/BtSettingsGuider;

    invoke-direct {v4, v0}, Lcom/android/settings/guide/BtSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 523
    :pswitch_1
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SubSettings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 524
    new-instance v4, Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-direct {v4, v0}, Lcom/android/settings/guide/WifiSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isInGuideMode()Z
    .locals 1

    .prologue
    .line 385
    sget-boolean v0, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return v0
.end method

.method public static isInGuideMode(Landroid/app/Activity;)Z
    .locals 1
    .parameter "parentActivity"

    .prologue
    .line 372
    sget-boolean v0, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 760
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    return v0
.end method

.method private static newInstance(Landroid/content/Intent;)Lcom/android/settings/guide/GuideFragment;
    .locals 3
    .parameter "settingsIntent"

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 400
    const/4 v1, 0x0

    .line 410
    :goto_0
    return-object v1

    .line 403
    :cond_0
    new-instance v1, Lcom/android/settings/guide/GuideFragment;

    invoke-direct {v1}, Lcom/android/settings/guide/GuideFragment;-><init>()V

    .line 406
    .local v1, f:Lcom/android/settings/guide/GuideFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 408
    invoke-virtual {v1, v0}, Lcom/android/settings/guide/GuideFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "activity"

    .prologue
    .line 61
    invoke-static {p2}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v1

    check-cast v1, Lcom/android/settings/guide/GuideFragment;

    invoke-direct {v1}, Lcom/android/settings/guide/GuideFragment;->getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 64
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 67
    :cond_0
    return-void
.end method

.method public static setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 3
    .parameter "activity"
    .parameter "mWifiEnabler"
    .parameter "mBluetoothEnabler"

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GuideFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/guide/GuideFragmentCallback;

    move-object v0, v1

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    .line 337
    .local v0, guide:Lcom/android/settings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0, p2, p1}, Lcom/android/settings/guide/GuideFragmentCallback;->setEnablers(Lcom/android/settings/bluetooth/BluetoothEnabler;Lcom/android/settings/wifi/WifiEnabler;)V

    .line 340
    :cond_0
    return-void
.end method

.method public static setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 4
    .parameter "activity"
    .parameter "header"

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, retval:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 82
    :cond_0
    const/4 v2, 0x0

    .line 91
    :goto_0
    return v2

    .line 85
    :cond_1
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v0

    .line 87
    .local v0, guider:Lcom/android/settings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_2

    .line 88
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-interface {v0, v2, v3}, Lcom/android/settings/guide/GuideFragmentCallback;->setSelectedSectionId(J)Z

    move-result v1

    :cond_2
    move v2, v1

    .line 91
    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyEvent"

    .prologue
    .line 587
    const/4 v1, 0x0

    .line 588
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 590
    .local v0, keyCode:I
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eqz v2, :cond_0

    .line 591
    sparse-switch v0, :sswitch_data_0

    .line 601
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v2, :cond_0

    .line 602
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 608
    :cond_0
    :goto_0
    return v1

    .line 597
    :sswitch_0
    const/4 v1, 0x0

    .line 598
    goto :goto_0

    .line 591
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnKeyListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnShowListener()Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onActivityCreated(Landroid/os/Bundle;)V

    .line 441
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 445
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 447
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    .line 448
    invoke-static {p1}, Lcom/android/settings/guide/GuideModeHelper;->init(Landroid/content/Context;)V

    .line 450
    invoke-direct {p0, v1, v1}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 452
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 569
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 570
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 420
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onCreate(Landroid/os/Bundle;)V

    .line 426
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/GuideFragment;->setHasOptionsMenu(Z)V

    .line 427
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/GuideFragment;->setRetainInstance(Z)V

    .line 428
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v1, :cond_0

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onDestroy()V

    .line 577
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 583
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "GuideFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    .line 750
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 556
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 558
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->onPause()V

    .line 561
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 742
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 541
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 543
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->onResume()V

    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->finish()V

    goto :goto_0
.end method

.method public setEnablers(Lcom/android/settings/bluetooth/BluetoothEnabler;Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 4
    .parameter "enablerBT"
    .parameter "enablerWiFi"

    .prologue
    .line 615
    new-instance v0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    :cond_0
    move-object p2, p1

    .end local p2
    :cond_1
    invoke-direct {v0, v1, p2}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;-><init>(Lcom/android/settings/guide/GuideFragment$GuideModes;Ljava/lang/Object;)V

    .line 619
    .local v0, enabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v1, :cond_2

    .line 620
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1, v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V

    .line 622
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 623
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1}, Lcom/android/settings/guide/GuiderLifecycleListener;->showHelpDialog()V

    .line 626
    :cond_2
    return-void
.end method

.method public setSelectedSectionId(J)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 632
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x0

    .line 638
    :goto_0
    return v0

    .line 636
    :cond_0
    invoke-static {p1, p2}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->fromId(J)Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->switchGuiderMode()Z

    move-result v0

    goto :goto_0
.end method

.method switchGuiderMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, nextMode:Lcom/android/settings/guide/GuideFragment$GuideModes;
    const/4 v1, 0x0

    .line 656
    .local v1, retval:Z
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 657
    const/4 v2, 0x0

    .line 689
    :goto_0
    return v2

    .line 661
    :cond_0
    sget-object v2, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$SettingsHeader:[I

    iget-object v3, p0, Lcom/android/settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-virtual {v3}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 678
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 679
    invoke-direct {p0, v4, v0}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 681
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v2, :cond_2

    .line 682
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->onCreate(Landroid/os/Bundle;)V

    .line 683
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->onActivityCreated(Landroid/os/Bundle;)V

    .line 684
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2}, Lcom/android/settings/guide/GuiderLifecycleListener;->onResume()V

    .line 686
    :cond_2
    const/4 v1, 0x1

    :cond_3
    move v2, v1

    .line 689
    goto :goto_0

    .line 663
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    .line 664
    sget-object v0, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_1

    .line 669
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    .line 670
    sget-object v0, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_1

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
