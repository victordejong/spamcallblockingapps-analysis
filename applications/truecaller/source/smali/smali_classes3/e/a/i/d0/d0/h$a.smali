.class public final Le/a/i/d0/d0/h$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/d0/h;->a(Le/a/i/c/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/d0/d0/h;


# direct methods
.method public constructor <init>(Le/a/i/d0/d0/h;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/d0/h$a;->b:Le/a/i/d0/d0/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/i/d0/d0/h$a;->b:Le/a/i/d0/d0/h;

    iget-object v1, v0, Le/a/i/d0/d0/h;->a:Le/a/i/c/d/a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v0, v0, Le/a/i/d0/d0/h;->d:Lcom/truecaller/ads/mediation/google/ServerParams;

    invoke-virtual {v0}, Lcom/truecaller/ads/mediation/google/ServerParams;->getContext()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Le/a/i/c/d/a;->c([Ljava/lang/String;)V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
