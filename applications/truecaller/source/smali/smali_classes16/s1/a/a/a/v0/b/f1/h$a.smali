.class public final Ls1/a/a/a/v0/b/f1/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/f1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/b/f1/h;

.field public static final synthetic b:Ls1/a/a/a/v0/b/f1/h$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/f1/h$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/b/f1/h$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/b/f1/h$a;->b:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/b/f1/h$a$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/b/f1/h$a$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ls1/a/a/a/v0/b/f1/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;)",
            "Ls1/a/a/a/v0/b/f1/h;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    goto :goto_0

    :cond_0
    new-instance v0, Ls1/a/a/a/v0/b/f1/i;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/b/f1/i;-><init>(Ljava/util/List;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
