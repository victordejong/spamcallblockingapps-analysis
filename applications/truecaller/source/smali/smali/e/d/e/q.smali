.class public Le/d/e/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/d/e/q$a;,
        Le/d/e/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Le/d/e/b$a;

.field public final c:Le/d/e/v;

.field public d:Z


# direct methods
.method public constructor <init>(Le/d/e/v;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Le/d/e/q;->d:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Le/d/e/q;->a:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Le/d/e/q;->b:Le/d/e/b$a;

    .line 10
    iput-object p1, p0, Le/d/e/q;->c:Le/d/e/v;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Le/d/e/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le/d/e/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/d/e/q;->d:Z

    .line 3
    iput-object p1, p0, Le/d/e/q;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Le/d/e/q;->b:Le/d/e/b$a;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/d/e/q;->c:Le/d/e/v;

    return-void
.end method
