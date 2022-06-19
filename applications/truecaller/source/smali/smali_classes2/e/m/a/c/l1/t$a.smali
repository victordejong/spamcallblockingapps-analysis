.class public final Le/m/a/c/l1/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/l1/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/l1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/a/c/p1/l$a;

.field public b:Le/m/a/c/g1/j;

.field public c:Le/m/a/c/f1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/e<",
            "*>;"
        }
    .end annotation
.end field

.field public d:Le/m/a/c/p1/b0;

.field public e:I


# direct methods
.method public constructor <init>(Le/m/a/c/p1/l$a;)V
    .locals 1

    .line 1
    new-instance v0, Le/m/a/c/g1/f;

    invoke-direct {v0}, Le/m/a/c/g1/f;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Le/m/a/c/l1/t$a;->a:Le/m/a/c/p1/l$a;

    .line 4
    iput-object v0, p0, Le/m/a/c/l1/t$a;->b:Le/m/a/c/g1/j;

    .line 5
    sget-object p1, Le/m/a/c/f1/e;->a:Le/m/a/c/f1/e;

    iput-object p1, p0, Le/m/a/c/l1/t$a;->c:Le/m/a/c/f1/e;

    .line 6
    new-instance p1, Le/m/a/c/p1/u;

    invoke-direct {p1}, Le/m/a/c/p1/u;-><init>()V

    iput-object p1, p0, Le/m/a/c/l1/t$a;->d:Le/m/a/c/p1/b0;

    const/high16 p1, 0x100000

    .line 7
    iput p1, p0, Le/m/a/c/l1/t$a;->e:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/net/Uri;)Le/m/a/c/l1/p;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/c/l1/t$a;->b(Landroid/net/Uri;)Le/m/a/c/l1/t;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/net/Uri;)Le/m/a/c/l1/t;
    .locals 10

    .line 1
    new-instance v9, Le/m/a/c/l1/t;

    iget-object v2, p0, Le/m/a/c/l1/t$a;->a:Le/m/a/c/p1/l$a;

    iget-object v3, p0, Le/m/a/c/l1/t$a;->b:Le/m/a/c/g1/j;

    iget-object v4, p0, Le/m/a/c/l1/t$a;->c:Le/m/a/c/f1/e;

    iget-object v5, p0, Le/m/a/c/l1/t$a;->d:Le/m/a/c/p1/b0;

    iget v7, p0, Le/m/a/c/l1/t$a;->e:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Le/m/a/c/l1/t;-><init>(Landroid/net/Uri;Le/m/a/c/p1/l$a;Le/m/a/c/g1/j;Le/m/a/c/f1/e;Le/m/a/c/p1/b0;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v9
.end method
