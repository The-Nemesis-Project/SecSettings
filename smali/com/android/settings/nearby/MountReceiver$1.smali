.class Lcom/android/settings/nearby/MountReceiver$1;
.super Landroid/os/Handler;
.source "MountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/MountReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/MountReceiver;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/MountReceiver;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/nearby/MountReceiver$1;->this$0:Lcom/android/settings/nearby/MountReceiver;

    iput-object p3, p0, Lcom/android/settings/nearby/MountReceiver$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 93
    const-string v3, "MountReceiver"

    const-string v4, "mPrefHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/android/settings/nearby/MountReceiver$1;->val$mContext:Landroid/content/Context;

    const-string v4, "pref_allshare"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    .local v1, prefAllshare:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 137
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void

    .line 101
    :pswitch_1
    const-string v3, "allshare_download_to"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 105
    :pswitch_2
    const-string v3, "allshare_onoff"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 109
    :pswitch_3
    const-string v3, "allshare_onoff"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 113
    :pswitch_4
    const-string v3, "isShutdowned"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 117
    :pswitch_5
    const-string v3, "isShutdowned"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 121
    :pswitch_6
    const-string v3, "allshare_onoff"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "2"

    aput-object v4, v3, v7

    const-string v4, "0"

    aput-object v4, v3, v8

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v2, sharedContents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "allshare_shared_contents"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v3, "allshare_device_name"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    const-string v3, "allshare_download_to"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    const-string v3, "allshare_download_from"

    const-string v4, "1"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    const-string v3, "allshare_accept_device"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 129
    const-string v3, "allshare_reject_device"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v3, "allshare_welcome_popup"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1b59
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method