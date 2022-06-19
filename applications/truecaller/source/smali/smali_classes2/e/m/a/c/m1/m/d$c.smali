.class public final Le/m/a/c/m1/m/d$c;
.super Le/m/a/c/m1/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/m1/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Le/m/a/c/m1/m/d;


# direct methods
.method public constructor <init>(Le/m/a/c/m1/m/d;Le/m/a/c/m1/m/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/m1/m/d$c;->c:Le/m/a/c/m1/m/d;

    invoke-direct {p0}, Le/m/a/c/m1/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/m1/m/d$c;->c:Le/m/a/c/m1/m/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Le/m/a/c/m1/j;->clear()V

    .line 4
    iget-object v0, v0, Le/m/a/c/m1/m/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
