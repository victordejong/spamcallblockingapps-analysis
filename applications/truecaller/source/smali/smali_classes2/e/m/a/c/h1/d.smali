.class public final synthetic Le/m/a/c/h1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Le/m/a/c/h1/h$g;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/h1/h$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/h1/d;->a:Le/m/a/c/h1/h$g;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Le/m/a/c/h1/d;->a:Le/m/a/c/h1/h$g;

    .line 1
    invoke-interface {v0, p2}, Le/m/a/c/h1/h$g;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, Le/m/a/c/h1/h$g;->a(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
