.class public final Le/f/a/t/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/t/k/a$c;,
        Le/f/a/t/k/a$d;,
        Le/f/a/t/k/a$e;,
        Le/f/a/t/k/a$b;
    }
.end annotation


# static fields
.field public static final a:Le/f/a/t/k/a$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/t/k/a$e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/t/k/a$a;

    invoke-direct {v0}, Le/f/a/t/k/a$a;-><init>()V

    sput-object v0, Le/f/a/t/k/a;->a:Le/f/a/t/k/a$e;

    return-void
.end method

.method public static a(ILe/f/a/t/k/a$b;)Ln3/k/h/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Le/f/a/t/k/a$d;",
            ">(I",
            "Le/f/a/t/k/a$b<",
            "TT;>;)",
            "Ln3/k/h/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/k/h/g;

    invoke-direct {v0, p0}, Ln3/k/h/g;-><init>(I)V

    .line 2
    sget-object p0, Le/f/a/t/k/a;->a:Le/f/a/t/k/a$e;

    .line 3
    new-instance v1, Le/f/a/t/k/a$c;

    invoke-direct {v1, v0, p1, p0}, Le/f/a/t/k/a$c;-><init>(Ln3/k/h/e;Le/f/a/t/k/a$b;Le/f/a/t/k/a$e;)V

    return-object v1
.end method
