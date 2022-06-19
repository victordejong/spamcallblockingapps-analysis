.class public interface abstract Lm/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm/o;

    invoke-direct {v0}, Lm/o;-><init>()V

    sput-object v0, Lm/p;->a:Lm/p;

    return-void
.end method


# virtual methods
.method public abstract a(Lm/y;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/y;",
            "Ljava/util/List<",
            "Lm/n;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Lm/y;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/y;",
            ")",
            "Ljava/util/List<",
            "Lm/n;",
            ">;"
        }
    .end annotation
.end method
