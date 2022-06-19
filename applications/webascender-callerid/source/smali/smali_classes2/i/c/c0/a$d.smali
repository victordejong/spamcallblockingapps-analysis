.class final Li/c/c0/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/c0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# static fields
.field static final a:Li/c/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/z/g/c;

    invoke-direct {v0}, Li/c/z/g/c;-><init>()V

    sput-object v0, Li/c/c0/a$d;->a:Li/c/r;

    return-void
.end method
