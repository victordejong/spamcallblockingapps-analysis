.class public abstract Lcom/truecaller/contextcall/db/ContextCallDatabase;
.super Ln3/c0/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/contextcall/db/ContextCallDatabase$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008!\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/contextcall/db/ContextCallDatabase;",
        "Ln3/c0/q;",
        "Le/a/o/p/a/a;",
        "b",
        "()Le/a/o/p/a/a;",
        "Le/a/o/p/c/a;",
        "d",
        "()Le/a/o/p/c/a;",
        "Le/a/o/p/e/a;",
        "a",
        "()Le/a/o/p/e/a;",
        "Le/a/o/p/b/b;",
        "c",
        "()Le/a/o/p/b/b;",
        "Le/a/o/p/e/g/a;",
        "e",
        "()Le/a/o/p/e/g/a;",
        "<init>",
        "()V",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/truecaller/contextcall/db/ContextCallDatabase$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/contextcall/db/ContextCallDatabase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/contextcall/db/ContextCallDatabase$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/contextcall/db/ContextCallDatabase;->a:Lcom/truecaller/contextcall/db/ContextCallDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/c0/q;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Le/a/o/p/e/a;
.end method

.method public abstract b()Le/a/o/p/a/a;
.end method

.method public abstract c()Le/a/o/p/b/b;
.end method

.method public abstract d()Le/a/o/p/c/a;
.end method

.method public abstract e()Le/a/o/p/e/g/a;
.end method
