.class public final Ls1/a/a/a/v0/j/y/c$b;
.super Ls1/a/a/a/v0/j/y/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/j/y/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/j/y/c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/j/y/c$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/j/y/c$b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/j/y/c$b;->a:Ls1/a/a/a/v0/j/y/c$b;

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

    const/4 v0, 0x0

    return v0
.end method
