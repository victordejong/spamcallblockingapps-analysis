.class public final Le/a/a/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/f/b$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/a/f/c;

.field public final b:Le/a/j2;

.field public final c:Le/a/a/f/b;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/f/f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/f/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/f/c;Le/a/j2;Le/a/a/f/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/f/b;->c:Le/a/a/f/b;

    .line 3
    iput-object p1, p0, Le/a/a/f/b;->a:Le/a/a/f/c;

    .line 4
    iput-object p2, p0, Le/a/a/f/b;->b:Le/a/j2;

    .line 5
    new-instance p1, Le/a/a/f/b$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/f/b$b;-><init>(Le/a/a/f/b;I)V

    iput-object p1, p0, Le/a/a/f/b;->d:Ljavax/inject/Provider;

    .line 6
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/f/b;->e:Ljavax/inject/Provider;

    return-void
.end method
