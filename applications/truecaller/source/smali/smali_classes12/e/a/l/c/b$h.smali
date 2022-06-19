.class public final Le/a/l/c/b$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/l/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/c/b;


# direct methods
.method public constructor <init>(Le/a/l/c/b;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/b$h;->b:Le/a/l/c/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/a/l/c/c;

    iget-object v1, p0, Le/a/l/c/b$h;->b:Le/a/l/c/b;

    .line 2
    iget-object v1, v1, Le/a/l/c/b;->w:Le/a/p5/h0;

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {v0, v1}, Le/a/l/c/c;-><init>(Le/a/p5/h0;)V

    return-object v0

    :cond_0
    const-string v0, "resourceProvider"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
