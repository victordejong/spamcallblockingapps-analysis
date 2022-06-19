.class public Ls1/a/a/a/v0/h/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/h/f$a;
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/h/f;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/h/f$a;",
            "Ls1/a/a/a/v0/h/h$f<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/h/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/h/f;-><init>(Z)V

    sput-object v0, Ls1/a/a/a/v0/h/f;->b:Ls1/a/a/a/v0/h/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls1/a/a/a/v0/h/f;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/h/f;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/h/h$f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/h/h$f<",
            "**>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/f;->a:Ljava/util/Map;

    new-instance v1, Ls1/a/a/a/v0/h/f$a;

    .line 2
    iget-object v2, p1, Ls1/a/a/a/v0/h/h$f;->a:Ls1/a/a/a/v0/h/p;

    .line 3
    iget-object v3, p1, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 4
    iget v3, v3, Ls1/a/a/a/v0/h/h$e;->b:I

    .line 5
    invoke-direct {v1, v2, v3}, Ls1/a/a/a/v0/h/f$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
