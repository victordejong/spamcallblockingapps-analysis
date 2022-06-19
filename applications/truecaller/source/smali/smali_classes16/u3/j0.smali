.class public abstract Lu3/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/j0$a;
    }
.end annotation


# static fields
.field public static final a:Lu3/j0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu3/j0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu3/j0$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lu3/j0;->a:Lu3/j0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract b()Lu3/c0;
.end method

.method public abstract c(Lv3/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
