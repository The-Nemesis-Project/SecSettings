.class Lcom/android/settings/TetherSettings$11;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1319
    iget-object v2, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Lcom/android/settings/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesync_usb_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1320
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.sidesync.action.FINISH_SIDESYNC_APP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1321
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "FINISH_SIDESYNC_APP_REASON"

    const-string v3, "BY_SETTINGS_TETHERING"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1322
    iget-object v2, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/TetherSettings;->access$1800(Lcom/android/settings/TetherSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1324
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1325
    .local v1, mHandler:Landroid/os/Handler;
    new-instance v2, Lcom/android/settings/TetherSettings$11$1;

    invoke-direct {v2, p0}, Lcom/android/settings/TetherSettings$11$1;-><init>(Lcom/android/settings/TetherSettings$11;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1335
    return-void
.end method