.class public final Le/a/c/i/b/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/b/g;-><init>(Le/a/c/c0/m;Ls1/w/f;Le/a/c/b/e;Le/a/c/i/b/a;Le/a/c/b/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/i/b/g;


# direct methods
.method public constructor <init>(Le/a/c/i/b/g;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/b/g$a;->b:Le/a/c/i/b/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/i/b/g$a;->b:Le/a/c/i/b/g;

    .line 2
    iget-object v0, v0, Le/a/c/i/b/g;->w:Le/a/c/b/e;

    .line 3
    invoke-interface {v0}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
