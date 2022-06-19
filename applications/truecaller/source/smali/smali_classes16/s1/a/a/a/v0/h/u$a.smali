.class public Ls1/a/a/a/v0/h/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/h/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/u$a$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/h/u$a$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/h/u$a;->a:Ljava/util/Iterator;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/h/u$a$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/h/u$a$b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/h/u$a;->b:Ljava/lang/Iterable;

    return-void
.end method
