.class public Le/p/a/y/j/d$e$b;
.super Le/p/a/y/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/p/a/y/j/d$e;->g(ZLe/p/a/y/j/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le/p/a/y/j/d$e;


# direct methods
.method public varargs constructor <init>(Le/p/a/y/j/d$e;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/j/d$e$b;->b:Le/p/a/y/j/d$e;

    invoke-direct {p0, p2, p3}, Le/p/a/y/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/y/j/d$e$b;->b:Le/p/a/y/j/d$e;

    iget-object v0, v0, Le/p/a/y/j/d$e;->c:Le/p/a/y/j/d;

    .line 2
    iget-object v0, v0, Le/p/a/y/j/d;->c:Le/p/a/y/j/d$d;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
