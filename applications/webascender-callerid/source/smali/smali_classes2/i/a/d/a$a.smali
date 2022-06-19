.class Li/a/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/f/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final f:Li/a/d/f/q;


# direct methods
.method constructor <init>(Li/a/d/f/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/a/d/a$a;->f:Li/a/d/f/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/x;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/a$a;->f:Li/a/d/f/q;

    invoke-virtual {v0, p1, p2}, Li/a/d/f/q;->a(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/x;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Li/a/a/f/x;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/a$a;->f:Li/a/d/f/q;

    invoke-virtual {v0, p1}, Li/a/d/f/q;->get(Ljava/lang/String;)Li/a/a/f/x;

    move-result-object p1

    return-object p1
.end method
