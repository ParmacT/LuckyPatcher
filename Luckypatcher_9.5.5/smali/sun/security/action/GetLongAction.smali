.class public Lsun/security/action/GetLongAction;
.super Ljava/lang/Object;
.source "GetLongAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private defaultSet:Z

.field private defaultVal:J

.field private theProp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lsun/security/action/GetLongAction;->defaultSet:Z

    .line 78
    iput-object p1, p0, Lsun/security/action/GetLongAction;->theProp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lsun/security/action/GetLongAction;->defaultSet:Z

    .line 89
    iput-object p1, p0, Lsun/security/action/GetLongAction;->theProp:Ljava/lang/String;

    .line 90
    iput-wide p2, p0, Lsun/security/action/GetLongAction;->defaultVal:J

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lsun/security/action/GetLongAction;->defaultSet:Z

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Long;
    .locals 3

    .line 107
    iget-object v0, p0, Lsun/security/action/GetLongAction;->theProp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    iget-boolean v1, p0, Lsun/security/action/GetLongAction;->defaultSet:Z

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lsun/security/action/GetLongAction;->defaultVal:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lsun/security/action/GetLongAction;->run()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
