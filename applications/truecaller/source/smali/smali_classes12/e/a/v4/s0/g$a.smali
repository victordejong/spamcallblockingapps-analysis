.class public final Le/a/v4/s0/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v4/s0/g;-><init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/v;Le/a/v4/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/v4/p0/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v4/s0/g;


# direct methods
.method public constructor <init>(Le/a/v4/s0/g;)V
    .locals 0

    iput-object p1, p0, Le/a/v4/s0/g$a;->b:Le/a/v4/s0/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/v4/p0/c;

    iget-object v1, p0, Le/a/v4/s0/g$a;->b:Le/a/v4/s0/g;

    .line 2
    iget-object v2, v1, Le/a/v4/s0/g;->h:Le/a/v4/l;

    .line 3
    invoke-direct {v0, v2, v1}, Le/a/v4/p0/c;-><init>(Le/a/v4/l;Le/a/v4/p0/b$a;)V

    return-object v0
.end method
