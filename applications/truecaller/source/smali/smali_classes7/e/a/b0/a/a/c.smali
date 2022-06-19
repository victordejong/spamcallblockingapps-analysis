.class public final Le/a/b0/a/a/c;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR#\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Le/a/b0/a/a/c;",
        "Ln3/v/y0;",
        "Ln3/v/k0;",
        "Le/a/b0/a/a/b;",
        "a",
        "Ls1/g;",
        "c",
        "()Ln3/v/k0;",
        "state",
        "<init>",
        "()V",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    .line 2
    sget-object v0, Le/a/b0/a/a/c$a;->b:Le/a/b0/a/a/c$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/b0/a/a/c;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final c()Ln3/v/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/v/k0<",
            "Le/a/b0/a/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/b0/a/a/c;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/v/k0;

    return-object v0
.end method
