.class public final Le/a/a/g/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/a/g/f0;->a:I

    iput p2, p0, Le/a/a/g/f0;->b:I

    iput p3, p0, Le/a/a/g/f0;->c:I

    iput p4, p0, Le/a/a/g/f0;->d:I

    iput-object p5, p0, Le/a/a/g/f0;->e:Ljava/util/List;

    iput-object p6, p0, Le/a/a/g/f0;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;Ljava/util/List;I)V
    .locals 0

    and-int/lit8 p5, p7, 0x10

    and-int/lit8 p5, p7, 0x20

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/a/g/f0;->a:I

    iput p2, p0, Le/a/a/g/f0;->b:I

    iput p3, p0, Le/a/a/g/f0;->c:I

    iput p4, p0, Le/a/a/g/f0;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/a/g/f0;->e:Ljava/util/List;

    iput-object p1, p0, Le/a/a/g/f0;->f:Ljava/util/List;

    return-void
.end method
