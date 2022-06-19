.class public Le/h/a/c/p0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Le/h/a/c/p0/b;

.field public d:I

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/h/a/c/p0/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:[I

.field public g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/h/a/c/p0/c;->d:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le/h/a/c/p0/c;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Le/h/a/c/p0/c;->f:[I

    .line 5
    iput v0, p0, Le/h/a/c/p0/c;->j:I

    .line 6
    iput v0, p0, Le/h/a/c/p0/c;->k:I

    return-void
.end method
