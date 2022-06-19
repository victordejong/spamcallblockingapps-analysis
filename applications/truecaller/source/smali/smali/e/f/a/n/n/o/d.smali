.class public Le/f/a/n/n/o/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Le/f/a/n/n/o/a;


# instance fields
.field public final a:Le/f/a/n/n/o/c;

.field public final b:Le/f/a/n/o/b0/b;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/n/o/a;

    invoke-direct {v0}, Le/f/a/n/n/o/a;-><init>()V

    sput-object v0, Le/f/a/n/n/o/d;->e:Le/f/a/n/n/o/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Le/f/a/n/n/o/c;Le/f/a/n/o/b0/b;Landroid/content/ContentResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Le/f/a/n/n/o/c;",
            "Le/f/a/n/o/b0/b;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/f/a/n/n/o/d;->a:Le/f/a/n/n/o/c;

    .line 3
    iput-object p3, p0, Le/f/a/n/n/o/d;->b:Le/f/a/n/o/b0/b;

    .line 4
    iput-object p4, p0, Le/f/a/n/n/o/d;->c:Landroid/content/ContentResolver;

    .line 5
    iput-object p1, p0, Le/f/a/n/n/o/d;->d:Ljava/util/List;

    return-void
.end method
