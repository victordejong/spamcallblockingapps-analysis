.class public final Le/a/e/c/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/c/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/p5/u0/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/c/a;


# direct methods
.method public constructor <init>(Le/a/e/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/e/c/a$b;->b:Le/a/e/c/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c/a$b;->b:Le/a/e/c/a;

    invoke-static {v0}, Le/a/e/c/a;->a(Le/a/e/c/a;)Le/a/w1;

    move-result-object v0

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->N0()Le/a/p5/u0/b;

    move-result-object v0

    const-string v1, "graphHolder.objectsGraph.featureShowcaseUtils()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
