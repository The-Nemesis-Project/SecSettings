.class Lcom/android/settings/wfd/WfdPickerActivity$1$1;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wfd/WfdPickerActivity$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1$1;->this$1:Lcom/android/settings/wfd/WfdPickerActivity$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    .line 286
    invoke-static {p1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$202(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 287
    const-string v0, "WfdPickerActivity"

    const-string v1, "wfd settings P2P changed mCreatedGroupInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method
