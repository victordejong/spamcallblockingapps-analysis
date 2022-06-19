.class Lf/h/l/b0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/h/l/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lf/h/l/b0;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lf/h/l/b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf/h/l/b0;-><init>(Lf/h/l/b0;)V

    invoke-direct {p0, v0}, Lf/h/l/b0$d;-><init>(Lf/h/l/b0;)V

    return-void
.end method

.method constructor <init>(Lf/h/l/b0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lf/h/l/b0$d;->a:Lf/h/l/b0;

    return-void
.end method


# virtual methods
.method a()Lf/h/l/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/h/l/b0$d;->a:Lf/h/l/b0;

    return-object v0
.end method

.method b(Lf/h/e/b;)V
    .locals 0

    return-void
.end method

.method c(Lf/h/e/b;)V
    .locals 0

    return-void
.end method
