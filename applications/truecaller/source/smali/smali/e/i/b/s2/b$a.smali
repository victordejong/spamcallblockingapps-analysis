.class public Le/i/b/s2/b$a;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/s2/b;->c()Le/i/b/s2/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/i/b/s2/b;


# direct methods
.method public constructor <init>(Le/i/b/s2/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/s2/b$a;->c:Le/i/b/s2/b;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/s2/b$a;->c:Le/i/b/s2/b;

    .line 2
    invoke-virtual {v0}, Le/i/b/s2/b;->a()V

    return-void
.end method
