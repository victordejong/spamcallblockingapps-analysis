.class public final Le/a/a/c/o/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c/o/j$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/a/c/o/b;

.field public final c:Le/a/a/c/o/j;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/o/e;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/o/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/c/o/b;Le/a/j2;Le/a/a/c/o/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/c/o/j;->c:Le/a/a/c/o/j;

    .line 3
    iput-object p2, p0, Le/a/a/c/o/j;->a:Le/a/j2;

    .line 4
    iput-object p1, p0, Le/a/a/c/o/j;->b:Le/a/a/c/o/b;

    .line 5
    new-instance p1, Le/a/a/c/o/j$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/c/o/j$b;-><init>(Le/a/a/c/o/j;I)V

    iput-object p1, p0, Le/a/a/c/o/j;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/a/c/o/j$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/c/o/j$b;-><init>(Le/a/a/c/o/j;I)V

    iput-object p1, p0, Le/a/a/c/o/j;->e:Ljavax/inject/Provider;

    .line 7
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/o/j;->f:Ljavax/inject/Provider;

    return-void
.end method
