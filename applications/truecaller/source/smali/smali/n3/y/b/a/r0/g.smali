.class public final synthetic Ln3/y/b/a/r0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final a:Ln3/y/b/a/r0/h$g;


# direct methods
.method public constructor <init>(Ln3/y/b/a/r0/h$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/r0/g;->a:Ln3/y/b/a/r0/h$g;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Ln3/y/b/a/r0/g;->a:Ln3/y/b/a/r0/h$g;

    .line 1
    invoke-interface {v0, p2}, Ln3/y/b/a/r0/h$g;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, Ln3/y/b/a/r0/h$g;->a(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
