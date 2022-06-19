.class public final Li/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/d/a$a;
    }
.end annotation


# instance fields
.field private final a:Li/a/d/a$a;


# direct methods
.method constructor <init>(Li/a/d/a$a;Li/a/b/t/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/a/d/a;->a:Li/a/d/a$a;

    return-void
.end method

.method public static c()Li/a/d/b;
    .locals 1

    .line 1
    new-instance v0, Li/a/d/b;

    invoke-direct {v0}, Li/a/d/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Li/a/a/f/z;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/a;->a:Li/a/d/a$a;

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Li/a/a/f/x;
    .locals 0

    invoke-static {p0, p1}, Li/a/a/a;->a(Li/a/a/b;Ljava/lang/String;)Li/a/a/f/x;

    move-result-object p1

    return-object p1
.end method
