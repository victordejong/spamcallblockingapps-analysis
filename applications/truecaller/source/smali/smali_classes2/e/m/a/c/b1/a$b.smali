.class public final Le/m/a/c/b1/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/b1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/m/a/c/b1/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Le/m/a/c/l1/p$a;",
            "Le/m/a/c/b1/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/c/y0$b;

.field public d:Le/m/a/c/b1/a$a;

.field public e:Le/m/a/c/b1/a$a;

.field public f:Le/m/a/c/b1/a$a;

.field public g:Le/m/a/c/y0;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/m/a/c/b1/a$b;->b:Ljava/util/HashMap;

    .line 4
    new-instance v0, Le/m/a/c/y0$b;

    invoke-direct {v0}, Le/m/a/c/y0$b;-><init>()V

    iput-object v0, p0, Le/m/a/c/b1/a$b;->c:Le/m/a/c/y0$b;

    .line 5
    sget-object v0, Le/m/a/c/y0;->a:Le/m/a/c/y0;

    iput-object v0, p0, Le/m/a/c/b1/a$b;->g:Le/m/a/c/y0;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/c/b1/a$a;Le/m/a/c/y0;)Le/m/a/c/b1/a$a;
    .locals 2

    .line 1
    iget-object v0, p1, Le/m/a/c/b1/a$a;->a:Le/m/a/c/l1/p$a;

    iget-object v0, v0, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Le/m/a/c/y0;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Le/m/a/c/b1/a$b;->c:Le/m/a/c/y0$b;

    invoke-virtual {p2, v0, v1}, Le/m/a/c/y0;->f(ILe/m/a/c/y0$b;)Le/m/a/c/y0$b;

    move-result-object v0

    iget v0, v0, Le/m/a/c/y0$b;->b:I

    .line 3
    new-instance v1, Le/m/a/c/b1/a$a;

    iget-object p1, p1, Le/m/a/c/b1/a$a;->a:Le/m/a/c/l1/p$a;

    invoke-direct {v1, p1, p2, v0}, Le/m/a/c/b1/a$a;-><init>(Le/m/a/c/l1/p$a;Le/m/a/c/y0;I)V

    return-object v1
.end method
