.class public final Ls1/a/a/a/v0/j/y/c$a;
.super Ls1/a/a/a/v0/j/y/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/j/y/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:I

.field public static final b:Ls1/a/a/a/v0/j/y/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/j/y/c$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/j/y/c$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/j/y/c$a;->b:Ls1/a/a/a/v0/j/y/c$a;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget v1, Ls1/a/a/a/v0/j/y/d;->j:I

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget v2, Ls1/a/a/a/v0/j/y/d;->h:I

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget v0, Ls1/a/a/a/v0/j/y/d;->i:I

    or-int/2addr v0, v2

    not-int v0, v0

    and-int/2addr v0, v1

    .line 9
    sput v0, Ls1/a/a/a/v0/j/y/c$a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/j/y/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Ls1/a/a/a/v0/j/y/c$a;->a:I

    return v0
.end method
