.class Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleShareContentType"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbyEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    .line 1025
    iget-object v8, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    #getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v8}, Lcom/android/settings/nearby/NearbyEnabler;->access$700(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    instance-of v8, p2, Ljava/util/HashSet;

    if-nez v8, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return v7

    .line 1030
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    #getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v8}, Lcom/android/settings/nearby/NearbyEnabler;->access$700(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/settings/nearby/IMediaServer;->getSharedMediaType()I

    move-result v3

    .line 1032
    .local v3, flag:I
    move-object v0, p2

    check-cast v0, Ljava/util/HashSet;

    move-object v6, v0

    .line 1034
    .local v6, value:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1035
    const v8, 0xff00

    or-int/2addr v3, v8

    .line 1041
    :goto_1
    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1042
    const/high16 v8, 0xff

    or-int/2addr v3, v8

    .line 1048
    :goto_2
    const-string v8, "2"

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1049
    or-int/lit16 v3, v3, 0xff

    .line 1055
    :goto_3
    iget-object v8, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    #getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v8}, Lcom/android/settings/nearby/NearbyEnabler;->access$700(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v8

    invoke-interface {v8, v3}, Lcom/android/settings/nearby/IMediaServer;->setSharedMediaType(I)V

    .line 1056
    const-string v8, "NearbyEnabler"

    const-string v9, "HandleShareContentType"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Photos/Videos/Music: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v8, p0, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    #getter for: Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "pref_allshare"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1060
    .local v5, preference2:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1061
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    const-string v8, "TEMP_NEW"

    invoke-interface {v2, v8, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1062
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    const/4 v7, 0x1

    goto :goto_0

    .line 1037
    .end local v2           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v5           #preference2:Landroid/content/SharedPreferences;
    :cond_2
    const v4, -0xff01

    .line 1038
    .local v4, mask:I
    and-int/2addr v3, v4

    goto :goto_1

    .line 1044
    .end local v4           #mask:I
    :cond_3
    const v4, -0xff0001

    .line 1045
    .restart local v4       #mask:I
    and-int/2addr v3, v4

    goto :goto_2

    .line 1051
    .end local v4           #mask:I
    :cond_4
    const/16 v4, -0x100

    .line 1052
    .restart local v4       #mask:I
    and-int/2addr v3, v4

    goto :goto_3

    .line 1064
    .end local v3           #flag:I
    .end local v4           #mask:I
    .end local v6           #value:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 1065
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "NearbyEnabler"

    const-string v9, "HandleShareContentType"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
