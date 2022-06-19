.class public final synthetic Le/a/o5/f;
.super Ls1/z/c/o;
.source "SourceFile"


# static fields
.field public static final h:Ls1/a/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/o5/f;

    invoke-direct {v0}, Le/a/o5/f;-><init>()V

    sput-object v0, Le/a/o5/f;->h:Ls1/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/truecaller/TrueApp;

    const-string v1, "sAppDowngradeDetected"

    const-string v2, "getSAppDowngradeDetected()Z"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ls1/z/c/o;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/truecaller/TrueApp;->r:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/truecaller/TrueApp;->r:Z

    return-void
.end method
