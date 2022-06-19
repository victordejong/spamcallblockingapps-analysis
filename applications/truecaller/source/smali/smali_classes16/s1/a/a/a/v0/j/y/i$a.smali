.class public final Ls1/a/a/a/v0/j/y/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/j/y/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic b:Ls1/a/a/a/v0/j/y/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/j/y/i$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/j/y/i$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/j/y/i$a;->b:Ls1/a/a/a/v0/j/y/i$a;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/j/y/i$a$a;->b:Ls1/a/a/a/v0/j/y/i$a$a;

    sput-object v0, Ls1/a/a/a/v0/j/y/i$a;->a:Ls1/z/b/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
