.class public final Le/a/i/b0/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/b0/d/a$a;,
        Le/a/i/b0/d/a$b;
    }
.end annotation


# static fields
.field public static final g:Le/a/i/b0/d/a;

.field public static final h:Le/a/i/b0/d/a$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/i/b0/d/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/i/b0/d/a$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 1
    new-instance v0, Le/a/i/b0/d/a$a;

    invoke-direct {v0}, Le/a/i/b0/d/a$a;-><init>()V

    const-string v1, "EMPTY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    invoke-virtual {v0}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object v0

    sput-object v0, Le/a/i/b0/d/a;->g:Le/a/i/b0/d/a;

    return-void
.end method

.method public constructor <init>(Le/a/i/b0/d/a$a;Ls1/z/c/f;)V
    .locals 1

    .line 1
    iget-object p2, p1, Le/a/i/b0/d/a$a;->a:Ljava/lang/String;

    .line 2
    iget-object p1, p1, Le/a/i/b0/d/a$a;->b:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/i/b0/d/a;->a:Ljava/lang/String;

    iput-object p1, p0, Le/a/i/b0/d/a;->b:Ljava/util/List;

    iput-object v0, p0, Le/a/i/b0/d/a;->c:Ljava/lang/Integer;

    iput-object v0, p0, Le/a/i/b0/d/a;->d:Ljava/lang/Integer;

    iput-object v0, p0, Le/a/i/b0/d/a;->e:Ljava/lang/String;

    iput-object v0, p0, Le/a/i/b0/d/a;->f:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "placements"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
