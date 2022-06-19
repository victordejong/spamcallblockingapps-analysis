.class public final Le/a/y/c/x/a/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/l/h/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/c/x/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Le/a/y/c/x/a/b;

.field public b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/a/l/f;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/a/l/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/a/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/y/c/x/a/b;Le/a/y/a/l/h/b;Le/a/y/c/x/a/b$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/c/x/a/b$d;->a:Le/a/y/c/x/a/b;

    .line 3
    new-instance p3, Le/a/y/a/l/h/c;

    invoke-direct {p3, p2}, Le/a/y/a/l/h/c;-><init>(Le/a/y/a/l/h/b;)V

    .line 4
    sget-object p2, Lo3/c/b;->c:Ljava/lang/Object;

    .line 5
    instance-of p2, p3, Lo3/c/b;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p3}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p3, p2

    .line 7
    :goto_0
    iput-object p3, p0, Le/a/y/c/x/a/b$d;->b:Ljavax/inject/Provider;

    .line 8
    iget-object p2, p1, Le/a/y/c/x/a/b;->G:Ljavax/inject/Provider;

    .line 9
    iget-object v0, p1, Le/a/y/c/x/a/b;->o:Ljavax/inject/Provider;

    .line 10
    iget-object p1, p1, Le/a/y/c/x/a/b;->g:Ljavax/inject/Provider;

    .line 11
    new-instance v1, Le/a/y/a/l/g;

    invoke-direct {v1, p2, v0, p3, p1}, Le/a/y/a/l/g;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 12
    iput-object v1, p0, Le/a/y/c/x/a/b$d;->c:Ljavax/inject/Provider;

    .line 13
    instance-of p1, v1, Lo3/c/b;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    new-instance p1, Lo3/c/b;

    invoke-direct {p1, v1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object v1, p1

    .line 15
    :goto_1
    iput-object v1, p0, Le/a/y/c/x/a/b$d;->d:Ljavax/inject/Provider;

    .line 16
    sget-object p1, Le/a/y/a/d/d$a;->a:Le/a/y/a/d/d;

    .line 17
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 19
    :goto_2
    iput-object p1, p0, Le/a/y/c/x/a/b$d;->e:Ljavax/inject/Provider;

    return-void
.end method
