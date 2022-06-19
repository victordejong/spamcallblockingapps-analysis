.class public final Le/a/k4/o/h$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k4/o/h;-><init>(Le/a/k4/o/j/a/a;Le/a/k4/o/j/b/a;Le/a/k4/o/f;Le/a/b0/o/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k4/o/h;


# direct methods
.method public constructor <init>(Le/a/k4/o/h;)V
    .locals 0

    iput-object p1, p0, Le/a/k4/o/h$a;->b:Le/a/k4/o/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k4/o/h$a;->b:Le/a/k4/o/h;

    .line 2
    iget-object v0, v0, Le/a/k4/o/h;->e:Le/a/b0/o/a;

    const-string v1, "forceRemoteGeocoding"

    .line 3
    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
