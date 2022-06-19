.class final Li/c/b0/j/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Li/c/b0/b/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/h/b;

    invoke-direct {v0}, Li/c/b0/e/h/b;-><init>()V

    sput-object v0, Li/c/b0/j/a$a;->a:Li/c/b0/b/d0;

    return-void
.end method
