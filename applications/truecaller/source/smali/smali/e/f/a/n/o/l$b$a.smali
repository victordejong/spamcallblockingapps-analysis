.class public Le/f/a/n/o/l$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/t/k/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/t/k/a$b<",
        "Le/f/a/n/o/m<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/f/a/n/o/l$b;


# direct methods
.method public constructor <init>(Le/f/a/n/o/l$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/n/o/l$b$a;->a:Le/f/a/n/o/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Le/f/a/n/o/m;

    iget-object v0, p0, Le/f/a/n/o/l$b$a;->a:Le/f/a/n/o/l$b;

    iget-object v1, v0, Le/f/a/n/o/l$b;->a:Le/f/a/n/o/d0/a;

    iget-object v2, v0, Le/f/a/n/o/l$b;->b:Le/f/a/n/o/d0/a;

    iget-object v3, v0, Le/f/a/n/o/l$b;->c:Le/f/a/n/o/d0/a;

    iget-object v4, v0, Le/f/a/n/o/l$b;->d:Le/f/a/n/o/d0/a;

    iget-object v5, v0, Le/f/a/n/o/l$b;->e:Le/f/a/n/o/n;

    iget-object v6, v0, Le/f/a/n/o/l$b;->f:Le/f/a/n/o/q$a;

    iget-object v7, v0, Le/f/a/n/o/l$b;->g:Ln3/k/h/e;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Le/f/a/n/o/m;-><init>(Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/d0/a;Le/f/a/n/o/n;Le/f/a/n/o/q$a;Ln3/k/h/e;)V

    return-object v8
.end method
