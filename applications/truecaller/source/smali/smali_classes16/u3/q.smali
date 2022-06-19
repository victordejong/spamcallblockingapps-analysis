.class public interface abstract Lu3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu3/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu3/p;

    invoke-direct {v0}, Lu3/p;-><init>()V

    sput-object v0, Lu3/q;->a:Lu3/q;

    return-void
.end method


# virtual methods
.method public abstract a(Lu3/a0;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/a0;",
            ")",
            "Ljava/util/List<",
            "Lu3/o;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lu3/a0;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/a0;",
            "Ljava/util/List<",
            "Lu3/o;",
            ">;)V"
        }
    .end annotation
.end method
