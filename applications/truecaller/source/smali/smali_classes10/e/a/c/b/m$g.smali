.class public final Le/a/c/b/m$g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/b/m;-><init>(Le/a/c/c/f/n;Le/a/c/c0/o;Le/a/c/i/b/a;Le/a/c/b/e;Le/a/c/b/j;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/b/m;


# direct methods
.method public constructor <init>(Le/a/c/b/m;)V
    .locals 0

    iput-object p1, p0, Le/a/c/b/m$g;->b:Le/a/c/b/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/c/b/m$g;->b:Le/a/c/b/m;

    .line 2
    iget-object v1, v1, Le/a/c/b/m;->d:Le/a/c/i/b/a;

    .line 3
    invoke-interface {v1}, Le/a/c/i/b/a;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le/a/c/b/m$g;->b:Le/a/c/b/m;

    .line 5
    iget-object v1, v1, Le/a/c/b/m;->e:Le/a/c/b/e;

    .line 6
    invoke-interface {v1}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
