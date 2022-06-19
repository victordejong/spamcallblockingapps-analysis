.class public final Ls1/a/a/a/v0/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls1/g;

.field public static final synthetic b:Ls1/a/a/a/v0/a/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/a/a$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/a/a$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/a/a$a;->b:Ls1/a/a/a/v0/a/a$a;

    .line 2
    sget-object v0, Ls1/h;->b:Ls1/h;

    sget-object v1, Ls1/a/a/a/v0/a/a$a$a;->b:Ls1/a/a/a/v0/a/a$a$a;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/a/a$a;->a:Ls1/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
