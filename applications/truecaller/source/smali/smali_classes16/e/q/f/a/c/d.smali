.class public Le/q/f/a/c/d;
.super Le/q/f/a/c/e;
.source "SourceFile"


# instance fields
.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Le/q/f/a/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/q/f/a/c/e;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Le/q/f/a/c/d;->e:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Le/q/f/a/c/d;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le/q/f/a/c/d;->g:I

    const-string v0, "type"

    .line 5
    iput-object v0, p0, Le/q/f/a/c/d;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/q/f/a/c/d;->i:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    return-void
.end method
