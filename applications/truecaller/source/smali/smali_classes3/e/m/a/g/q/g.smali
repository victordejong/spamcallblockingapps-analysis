.class public final Le/m/a/g/q/g;
.super Le/m/a/g/q/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/g/q/n<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Le/m/a/g/q/g;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Le/m/a/g/q/g;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Landroid/animation/ObjectAnimator;

.field public final f:Ln3/t/a/a/b;

.field public final g:Le/m/a/g/q/c;

.field public h:I

.field public i:F

.field public j:F

.field public k:Ln3/h0/a/a/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Float;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Le/m/a/g/q/g;->l:[I

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Le/m/a/g/q/g;->m:[I

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_2

    sput-object v1, Le/m/a/g/q/g;->n:[I

    .line 4
    new-instance v1, Le/m/a/g/q/g$a;

    const-string v2, "animationFraction"

    invoke-direct {v1, v0, v2}, Le/m/a/g/q/g$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Le/m/a/g/q/g;->o:Landroid/util/Property;

    .line 5
    new-instance v1, Le/m/a/g/q/g$b;

    const-string v2, "completeEndFraction"

    invoke-direct {v1, v0, v2}, Le/m/a/g/q/g$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Le/m/a/g/q/g;->p:Landroid/util/Property;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x546
        0xa8c
        0xfd2
    .end array-data

    :array_1
    .array-data 4
        0x29b
        0x7e1
        0xd27
        0x126d
    .end array-data

    :array_2
    .array-data 4
        0x3e8
        0x92e
        0xe74
        0x13ba
    .end array-data
.end method

.method public constructor <init>(Le/m/a/g/q/h;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Le/m/a/g/q/n;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/m/a/g/q/g;->h:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/m/a/g/q/g;->k:Ln3/h0/a/a/b;

    .line 4
    iput-object p1, p0, Le/m/a/g/q/g;->g:Le/m/a/g/q/c;

    .line 5
    new-instance p1, Ln3/t/a/a/b;

    invoke-direct {p1}, Ln3/t/a/a/b;-><init>()V

    iput-object p1, p0, Le/m/a/g/q/g;->f:Ln3/t/a/a/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/g;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/g/q/g;->h:I

    .line 2
    iget-object v1, p0, Le/m/a/g/q/n;->c:[I

    iget-object v2, p0, Le/m/a/g/q/g;->g:Le/m/a/g/q/c;

    iget-object v2, v2, Le/m/a/g/q/c;->c:[I

    aget v2, v2, v0

    iget-object v3, p0, Le/m/a/g/q/n;->a:Le/m/a/g/q/o;

    .line 3
    iget v3, v3, Le/m/a/g/q/l;->j:I

    .line 4
    invoke-static {v2, v3}, Ln3/g0/y;->C(II)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Le/m/a/g/q/g;->j:F

    return-void
.end method
