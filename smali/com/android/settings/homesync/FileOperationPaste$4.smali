.class Lcom/android/settings/homesync/FileOperationPaste$4;
.super Ljava/lang/Object;
.source "FileOperationPaste.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homesync/FileOperationPaste;->createCancelDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/FileOperationPaste;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/FileOperationPaste;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationPaste$4;->this$0:Lcom/android/settings/homesync/FileOperationPaste;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste$4;->this$0:Lcom/android/settings/homesync/FileOperationPaste;

    invoke-virtual {v0}, Lcom/android/settings/homesync/FileOperationPaste;->cancel()V

    .line 170
    return-void
.end method
