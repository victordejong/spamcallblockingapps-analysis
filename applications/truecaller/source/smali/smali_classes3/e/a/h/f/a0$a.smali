.class public final Le/a/h/f/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h/f/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:[Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 2
    iput-object v0, p0, Le/a/h/f/a0$a;->a:[Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;I)V
    .locals 0

    and-int/lit8 p1, p3, 0x1

    const/4 p1, 0x2

    and-int/lit8 p2, p3, 0x2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    const/4 p2, 0x0

    const/4 p3, 0x0

    aput-object p3, p1, p2

    const/4 p2, 0x1

    aput-object p3, p1, p2

    .line 4
    iput-object p1, p0, Le/a/h/f/a0$a;->a:[Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    return-void
.end method
