.class public final synthetic Ln3/y/b/a/x0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final a:Ljava/util/Comparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/y/b/a/x0/o;

    invoke-direct {v0}, Ln3/y/b/a/x0/o;-><init>()V

    sput-object v0, Ln3/y/b/a/x0/o;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ln3/y/b/a/x0/q$b;

    check-cast p2, Ln3/y/b/a/x0/q$b;

    .line 1
    sget v0, Ln3/y/b/a/x0/q;->h:I

    .line 2
    iget p1, p1, Ln3/y/b/a/x0/q$b;->a:I

    iget p2, p2, Ln3/y/b/a/x0/q$b;->a:I

    sub-int/2addr p1, p2

    return p1
.end method
