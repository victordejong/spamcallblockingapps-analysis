.class public final Le/a/y/c/x/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/c/x/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/c/x/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/a/y/c/x/a/b;

.field public b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/c/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/y/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/y/c/x/a/b;Le/a/y/c/x/b/r;Le/a/y/c/x/a/b$a;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/c/x/a/b$b;->a:Le/a/y/c/x/a/b;

    .line 3
    iget-object v1, p1, Le/a/y/c/x/a/b;->G:Ljavax/inject/Provider;

    .line 4
    iget-object v2, p1, Le/a/y/c/x/a/b;->o:Ljavax/inject/Provider;

    .line 5
    iget-object v3, p1, Le/a/y/c/x/a/b;->y:Ljavax/inject/Provider;

    .line 6
    iget-object v4, p1, Le/a/y/c/x/a/b;->k:Ljavax/inject/Provider;

    .line 7
    iget-object v5, p1, Le/a/y/c/x/a/b;->s:Ljavax/inject/Provider;

    .line 8
    iget-object v6, p1, Le/a/y/c/x/a/b;->w:Ljavax/inject/Provider;

    .line 9
    iget-object v7, p1, Le/a/y/c/x/a/b;->F:Ljavax/inject/Provider;

    .line 10
    iget-object v8, p1, Le/a/y/c/x/a/b;->I:Ljavax/inject/Provider;

    .line 11
    new-instance p1, Le/a/y/c/h;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Le/a/y/c/h;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 12
    iput-object p1, p0, Le/a/y/c/x/a/b$b;->b:Ljavax/inject/Provider;

    .line 13
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/y/c/x/a/b$b;->c:Ljavax/inject/Provider;

    return-void
.end method
