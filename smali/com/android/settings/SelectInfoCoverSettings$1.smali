.class Lcom/android/settings/SelectInfoCoverSettings$1;
.super Ljava/lang/Object;
.source "SelectInfoCoverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SelectInfoCoverSettings;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SelectInfoCoverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SelectInfoCoverSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/SelectInfoCoverSettings$1;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 180
    iget-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings$1;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "walk_mate"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.shealth.COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "visibility"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const-string v1, "type"

    const-string v2, "WALKMATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/android/settings/SelectInfoCoverSettings$1;->this$0:Lcom/android/settings/SelectInfoCoverSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    return-void
.end method